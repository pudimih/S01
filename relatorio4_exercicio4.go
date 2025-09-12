package main
import "fmt"

func verificarLogin(usuario, senha string) bool {
    if usuario == "senha" && senha == "admin" {
        return true
    } else {
        return false
    }
}

func main() {
    for { 
        var usuario, senha string
        fmt.Print("entre com seu nome de usuario: ")
        fmt.Scanln(&usuario)
        fmt.Print("entre com a senha senha: ")
        fmt.Scanln(&senha)

        if verificarLogin(usuario, senha) {
            fmt.Println("Login bem-sucedido!")
            break 
        } else {
            fmt.Println("Usuário ou senha incorretos, tente novamente.")
        }
    }
}
