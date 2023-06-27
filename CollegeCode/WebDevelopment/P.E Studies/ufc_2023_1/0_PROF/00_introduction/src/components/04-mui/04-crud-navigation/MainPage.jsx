import { BrowserRouter, Routes, Route } from "react-router-dom"
import { Container } from "@mui/material"
import MyMenu from "./MyMenu"
import CadastrarProfessor from "./professor/Cadastrar"
import ListarProfessor from "./professor/Listar"
import EditarProfessor from "./professor/Editar"
import ListarAluno from "./aluno/Lista"
import ListarAcima from "./aluno/ListarAcima"
import CadastrarAluno from "./aluno/Cadastrar"
import Signin from "../02-signin/Signin"


const MainPage = () => {
    return (

        
        <MyMenu />

    )

}

export default MainPage