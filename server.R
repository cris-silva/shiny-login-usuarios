
library(shiny)

usuarios <- tibble(usuario = c("administrador", "usuario_tic", "usuario_rh"),
                   password = c("administrador", "usuario_tic", "usuario_rh"),
                   permiso = c("administrador", "editor", "editor"),
                   nombre = c("Administrador", "Tecnologías de Información", "Recursos Humanos"),
                   grupo = c("CEO", "TIC", "RH"))

shinyServer(function(input, output, session) {
  
  credenciales <- loginServer("entrar",
                              data = usuarios,
                              user_col = usuario,
                              pwd_col = password,
                              log_out = reactive(inicio_salida()))
  
  inicio_salida <-logoutServer("salir",
                               active = reactive(credenciales()$user_auth))

})
