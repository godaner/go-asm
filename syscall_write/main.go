package main

import (
	"fmt"
)

func main() {
	s := "hello system call write\n"
	fmt.Println(syscall_write(0, s))
}
func syscall_write(fd int, s string) int
