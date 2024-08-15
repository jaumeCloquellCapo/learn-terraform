package main

import (
	"fmt"
	"net/http"
)

func main() {
	// Register the handler function with the default ServeMux
	http.HandleFunc("/", func(res http.ResponseWriter, req *http.Request) {
		fmt.Fprintf(res, "Hello, World!") // Respond with "Hello, World!"
	})
	http.ListenAndServe(":8080", nil)
}
