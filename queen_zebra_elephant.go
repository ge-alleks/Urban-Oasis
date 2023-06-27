package main

import (
	"fmt"
	"strings"
)

// UrbanOasis is a program to manage urban landscaping projects
func main() {
	fmt.Println("Welcome to Urban Oasis!\n")

	// define project variables
	name := "Urban Oasis"
	budget := 10000
	areas := []string{"patio", "flower beds", "rock garden"}
	
	// print project info
	fmt.Println("Project Name:", name)
	fmt.Println("Budget: $", budget)
	fmt.Println("Areas:", strings.Join(areas, ", "))
	fmt.Println()

	// create map of tasks and associated costs
	tasks := map[string]int{"soil prep": 500, "fencing": 1000, "planting": 1500,
		"mulching": 500, "irrigation": 1000, "leaf cleanup": 500}

	// print tasks
	fmt.Println("Tasks:")
	for task, cost := range tasks {
		fmt.Println("- ", task, "($", cost, ")")
	}
	fmt.Println()

	// define and print remaining budget
	var remainingBudget int
	for _, cost := range tasks {
		remainingBudget += cost
	}
	remainingBudget = budget - remainingBudget
	fmt.Println("Remaining Budget: $", remainingBudget)
	fmt.Println()

	// update budget with additional tasks
	tasks["lighting"] = 1000
	tasks["paths"] = 1000
	budget += 2000

	// print updated budget
	fmt.Println("Updated Budget: $", budget)
	fmt.Println()

	// define and print remaining budget
	remainingBudget = budget
	for _, cost := range tasks {
		remainingBudget -= cost
	}
	fmt.Println("Remaining Budget: $", remainingBudget)
}