package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", hello)

	fmt.Println("Server is running on http://localhost:8080")

	if err := http.ListenAndServe(":8080", nil); err != nil {
		fmt.Println(err)
	}
}

func hello(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintln(w, "Hello, World!")
}
