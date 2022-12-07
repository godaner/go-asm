package main

import (
	"fmt"
	"unsafe"
)

/*
package main

func NewTwiceFunClosure(x int) func() int {
    return func() int {
        x *= 2
        return x
    }
}

func main() {
    fnTwice := NewTwiceFunClosure(1)

    println(fnTwice()) // 1*2 => 2
    println(fnTwice()) // 2*2 => 4
    println(fnTwice()) // 4*2 => 8
}
*/
func main() {
	ccF := NewClosureFunc(1)
	for i := 0; i < 10; i++ {
		fmt.Println(ccF())
	}
}

type Context struct {
	FuncAddr uintptr
	Arg1     int
}

func NewClosureFunc(arg1 int) func() int {
	var ccPointer = &Context{
		FuncAddr: funcAddr(),
		Arg1:     arg1,
	}
	return ptrToFunc(unsafe.Pointer(ccPointer))
}
func funcAddr() uintptr
func ptrToFunc(ccPointer unsafe.Pointer) func() int
