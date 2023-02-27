package main

import (
	"database/sql"
	"encoding/json"
	"fmt"
	"log"
	"net/http"

	_ "github.com/go-sql-driver/mysql"
)

func connectDB() sql.DB {
	db, err := sql.Open("mysql", "root@tcp(localhost:3306)/test")
	if err != nil {
		panic(err.Error())
	} else {
		// fmt.Println("con sucess")
		return *db
	}
}

func hello(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "Hello Go")
}

func getUsersID(w http.ResponseWriter, r *http.Request) {

	type User struct {
		ID       int    `json:"id"`
		Username string `json:"username"`
		Password string `json:"password"`
		// Password string `json:"-"`
	}
	type ViewData struct {
		Msg     string `json:"msg"`
		Error   bool   `json:"error"`
		PayLoad []User `json:"pay_load"`
	}

	switch r.Method {
	case http.MethodGet:
		db := connectDB()
		id := r.URL.Query().Get("id")

		data, err := db.Query("SELECT * FROM users WHERE id = ?", id)
		defer db.Close()
		if err != nil {
			log.Fatal(err)
		}
		var usersList []User
		for data.Next() {
			var user User
			err := data.Scan(
				&user.ID,
				&user.Username,
				&user.Password,
			)
			if err != nil {
				panic(err.Error())
			}
			usersList = append(usersList, user)
		}
		var viewD ViewData
		viewD.Msg = "Get User by ID Successful"
		viewD.Error = false
		viewD.PayLoad = usersList
		dataJson, err := json.Marshal(viewD)
		if err != nil {
			w.WriteHeader(http.StatusInternalServerError)
		} else {
			w.Write(dataJson)
		}
	default:
		w.Write(nil)
	}
}

func getUsers(w http.ResponseWriter, r *http.Request) {

	type User struct {
		ID       int    `json:"id"`
		Username string `json:"username"`
		Password string `json:"password"`
		// Password string `json:"-"`
	}
	type ViewData struct {
		Msg     string `json:"msg"`
		Error   bool   `json:"error"`
		PayLoad []User `json:"pay_load"`
	}
	switch r.Method {
	case http.MethodGet:
		db := connectDB()
		data, err := db.Query("SELECT * FROM users")
		if err != nil {
			panic(err.Error())
			// fmt.Println("err db")
			// return
		} else {
			defer db.Close()

		}
		var usersList []User

		for data.Next() {
			var user User
			err := data.Scan(
				&user.ID,
				&user.Username,
				&user.Password,
			)

			if err != nil {
				panic(err.Error())
			}
			// user.Password = ""
			usersList = append(usersList, user)
		}
		var viewD ViewData
		viewD.Msg = "Get Users Successful"
		viewD.Error = false
		viewD.PayLoad = usersList
		dataJson, err := json.Marshal(viewD)

		if err != nil {
			w.WriteHeader(http.StatusInternalServerError)
		} else {
			w.Write(dataJson)
		}
	default:
		w.Write(nil)
	}
}

func getParam(w http.ResponseWriter, r *http.Request) {

	switch r.Method {
	case http.MethodGet:
		id := r.URL.Query().Get("id")
		fmt.Fprint(w, id)
	case http.MethodPost:

		type Body struct {
			ID int `json:"id"`
		}
		var b Body
		err := json.NewDecoder(r.Body).Decode(&b)
		if err != nil {
			http.Error(w, err.Error(), http.StatusBadRequest)
			return
		}
		fmt.Fprintf(w, "body: %+v", b)
	default:
		w.Write(nil)
	}
}

func getCats(w http.ResponseWriter, r *http.Request) {
	type Cat struct {
		ID           int    `json:"id"`
		Img          string `json:"img"`
		Species      string `json:"species"`
		Friendly     string `json:"friendly"`
		Adapt        string `json:"adapt"`
		Playful      string `json:"playful"`
		Img2         string `json:"img_2"`
		Experimental string `json:"experimental"`
		Health       string `json:"health"`
	}
	type ViewData struct {
		Msg     string `json:"msg"`
		Error   bool   `json:"error"`
		PayLoad []Cat  `json:"pay_load"`
	}
	switch r.Method {
	case http.MethodGet:
		db := connectDB()
		data, err := db.Query("SELECT * FROM cats")
		if err != nil {
			panic(err.Error())
			// fmt.Println("err db")
			// return
		} else {
			defer db.Close()

		}
		var catsList []Cat

		for data.Next() {
			var cat Cat
			err := data.Scan(
				&cat.ID,
				&cat.Img,
				&cat.Species,
				&cat.Friendly,
				&cat.Adapt,
				&cat.Playful,
				&cat.Img2,
				&cat.Experimental,
				&cat.Health,
			)

			if err != nil {
				panic(err.Error())
			}
			catsList = append(catsList, cat)
		}
		var viewD ViewData
		viewD.Msg = "Get Cats Successful"
		viewD.Error = false
		viewD.PayLoad = catsList
		dataJson, err := json.Marshal(viewD)

		if err != nil {
			w.WriteHeader(http.StatusInternalServerError)
		} else {
			w.Write(dataJson)
		}
	default:
		w.Write(nil)
	}
}

func getCatID(w http.ResponseWriter, r *http.Request) {
	type Cat struct {
		ID           int    `json:"id"`
		Img          string `json:"img"`
		Species      string `json:"species"`
		Friendly     string `json:"friendly"`
		Adapt        string `json:"adapt"`
		Playful      string `json:"playful"`
		Img2         string `json:"img_2"`
		Experimental string `json:"experimental"`
		Health       string `json:"health"`
	}
	type ViewData struct {
		Msg     string `json:"msg"`
		Error   bool   `json:"error"`
		PayLoad []Cat  `json:"pay_load"`
	}
	switch r.Method {
	case http.MethodGet:
		db := connectDB()
		id := r.URL.Query().Get("id")
		data, err := db.Query("SELECT * FROM cats WHERE id = ?", id)
		if err != nil {
			panic(err.Error())
			// fmt.Println("err db")
			// return
		} else {
			defer db.Close()

		}
		var catsList []Cat

		for data.Next() {
			var cat Cat
			err := data.Scan(
				&cat.ID,
				&cat.Img,
				&cat.Species,
				&cat.Friendly,
				&cat.Adapt,
				&cat.Playful,
				&cat.Img2,
				&cat.Experimental,
				&cat.Health,
			)

			if err != nil {
				panic(err.Error())
			}
			catsList = append(catsList, cat)
		}
		var viewD ViewData
		viewD.Msg = "Get Cats Successful"
		viewD.Error = false
		viewD.PayLoad = catsList
		dataJson, err := json.Marshal(viewD)

		if err != nil {
			w.WriteHeader(http.StatusInternalServerError)
		} else {
			w.Write(dataJson)
		}
	default:
		w.Write(nil)
	}
}

// func enableCorsMiddleware(handle http.Handler) http.Handler {
// 	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
// 		w.Header().Add("Access-Control-Allow-Origin", "*")
// 		w.Header().Add("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE")
// 		w.Header().Add("Access-Control-Allow-Headers", "Accept, Content-type, Content-Length, Authorization, X-CSRFToken")
// 		handle.ServeHTTP(w, r)
// 	})
// }

func enableCorsMiddleware(handle http.HandlerFunc) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.Header().Add("Access-Control-Allow-Origin", "*")
		w.Header().Add("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE")
		w.Header().Add("Access-Control-Allow-Headers", "Accept, Content-type, Content-Length, Authorization, X-CSRFToken")
		handle.ServeHTTP(w, r)
	})
}

func main() {
	fmt.Println("Sever Starting...")

	http.HandleFunc("/", hello)
	http.HandleFunc("/param", getParam)
	http.Handle("/users", enableCorsMiddleware(getUsers))
	http.Handle("/users_id", enableCorsMiddleware(getUsersID))

	http.Handle("/cats", enableCorsMiddleware(getCats))
	http.Handle("/cat_id", enableCorsMiddleware(getCatID))

	// http.Handle("/test", enableCorsMiddleware(http.HandlerFunc(getParam)))
	http.Handle("/test", enableCorsMiddleware(getParam))
	http.ListenAndServe(":8080", nil)
}
