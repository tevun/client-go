package main

import (
	"flag"
	"fmt"
)

func main() {
	var (
		name  string
		phone string
	)

	// https://gobyexample.com/command-line-flags
	// numbPtr := flag.Int("numb", 42, "an int")
	// boolPtr := flag.Bool("fork", false, "a bool")
	// fmt.Println("fork:", *boolPtr)
	// fmt.Println("numb:", *numbPtr)

	nameArgument := flag.String("name", "", "a string var")
	phoneArgument := flag.String("phone", "", "a string var")
	flag.Parse()
	// fmt.Println("tail:", flag.Args())

	name = *nameArgument
	phone = *phoneArgument

	fmt.Println("> Name")
	if len(name) == 0 {
		_, err := fmt.Scanln(&name)
		if err != nil {
			fmt.Println(err)
		}
		for name == "" {
			fmt.Println("Name is required")
			_, err := fmt.Scanln(&name)
			if err != nil {
				fmt.Println(err)
			}
		}
	}

	fmt.Println("> Phone")
	if len(phone) == 0 {
		_, err := fmt.Scanln(&phone)
		if err != nil {
			fmt.Println(err)
		}
	}

	fmt.Println("> Processing...")

	fmt.Printf("Confirm %s e %s\n\n", name, phone)
}
