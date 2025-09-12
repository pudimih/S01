package main
import "fmt"

func parouimpar(num int) string {
    verificar := num % 2
    switch verificar {
    case 0:
        return "O numero é par!"
    default:
        return "O numero é impar!"
    }
}

func main() {
    var num int
    fmt.Println("Entre com um numero para saber se é par ou impar:")
    fmt.Scanln(&num)
  
    resp := parouimpar(num)
    fmt.Println(resp)
}
