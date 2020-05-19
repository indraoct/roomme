package main

import (
	"database/sql"
	"fmt"
	_ "github.com/go-sql-driver/mysql"
	"log"
	"net/http"
	"roomme/controller"
	"time"
	"roomme/config"
)



func main(){
	cfg := config.Get()
	log.Printf("%#v", cfg)
	db, err := sql.Open("mysql", fmt.Sprintf("%s:%s@tcp(%s:3306)/%s", cfg.DBUser, cfg.DBPass, cfg.DBHost, cfg.DBName))

	if err != nil {
		fmt.Printf(err.Error())
		return
	}

	//connection pooling  read : http://go-database-sql.org/connection-pool.html
	db.SetMaxIdleConns(0)
	db.SetMaxOpenConns(5)
	db.SetConnMaxLifetime(time.Minute * 5)

	//building list [GET]
	http.HandleFunc("/building/list", func(w http.ResponseWriter, r *http.Request) {
		controller.BuildingList(db, w, r)
	})

	//buildng detail [GET]
	http.HandleFunc("/building/detail", func(w http.ResponseWriter, r *http.Request) {
		controller.BuildingDetail(db, w, r)
	})

	//buildng audit [POST]
	http.HandleFunc("/building/audit", func(w http.ResponseWriter, r *http.Request) {
		controller.BuildingAudit(db, w, r)
	})

	fmt.Println("server started at localhost:"+cfg.Port)
	err = http.ListenAndServe(":"+cfg.Port, nil)
	fmt.Println(err.Error())
}