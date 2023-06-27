import { BrowserRouter, Routes, Route } from "react-router-dom"
import { Container } from "@mui/material"
import MyMenu from "./MyMenu"
import CadastrarProfessor from "./professor/Cadastrar"
import ListarProfessor from "./professor/Listar"
import EditarProfessor from "./professor/Editar"
import ListarAluno from "./aluno/Lista"
import ListarAcima from "./aluno/ListarAcima"
import CadastrarAluno from "./aluno/Cadastrar"


const MainPage = () => {
    return (

        <BrowserRouter>
            <MyMenu />
            <Container 
                sx={{marginTop:5}}
            >
                <Routes>
                    <Route path="cadastrarProfessor/" element={<CadastrarProfessor />} />
                    {/* <Route path="listarProfessor/:id/:nome" element={<ListarProfessor />} /> */}
                    <Route path="listarProfessor/" element={<ListarProfessor />} /> 
                    <Route path="editarProfessor/:id" element={<EditarProfessor />} />
                    <Route path="listarAluno/" element={<ListarAluno/>}/>
                    <Route path="alunoAcima" element={<ListarAcima/>}/>
                    <Route path="cadastrarAluno" element={<CadastrarAluno/>}/>

                </Routes>
            </Container>
        </BrowserRouter>

    )

}

export default MainPage