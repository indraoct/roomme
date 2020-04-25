package main

import (
	"database/sql"
	"net/http"
	"time"
	"fmt"
	_ "github.com/go-sql-driver/mysql"
)

func ConnectDb() (*sql.DB, error) {
	db, err := sql.Open("mysql", "root:@tcp(127.0.0.1:3306)/roomme")
	if err != nil {
		return nil, err
	}
	
	//connection pooling  read : http://go-database-sql.org/connection-pool.html
	db.SetMaxIdleConns(0)
	db.SetMaxOpenConns(5)
	db.SetConnMaxLifetime(time.Minute * 5)
	
	return db, nil
}

func main(){
	
	
	
	fmt.Println("server started at localhost:9000")
	err := http.ListenAndServe(":9000", nil)
	fmt.Println(err.Error())
}

