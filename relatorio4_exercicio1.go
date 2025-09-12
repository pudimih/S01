package main
import "fmt"

func classificar_numero(num int) string {
    if num == 0 {
        return "Zero"
    } else if num > 0 {
        return "Positivo"
    } else {
        return "Negativo"
    }
}

func main() {
    var num int
    fmt.Println("Entre com um número:")
    fmt.Scanln(&num)
  
    resp := classificar_numero(num)
    fmt.Println(resp)
}
