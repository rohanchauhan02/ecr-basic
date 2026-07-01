package main

import (
	"fmt"
	"net/http"
	"test/config"
)

func main() {
	http.HandleFunc("/", hello)
	cfg, err := config.Load("config/config.yml")
	if err != nil {
		panic(err)
	}

	fmt.Println("Server is running on http://localhost:", cfg.Port)

	if err := http.ListenAndServe(cfg.Port, nil); err != nil {
		fmt.Println(err)
	}
}

func hello(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintln(w, "Hello, World!")
}
