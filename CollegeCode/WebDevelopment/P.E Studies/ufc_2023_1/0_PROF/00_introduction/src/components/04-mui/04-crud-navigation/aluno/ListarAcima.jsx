import { Typography, TableContainer, Paper, Table, TableHead, TableRow, TableCell, TableBody } from "@mui/material"
import { tableCellClasses } from '@mui/material/TableCell'
import IconButton from '@mui/material/IconButton';
import Stack from '@mui/material/Stack';
import DeleteIcon from '@mui/icons-material/Delete';
import EditIcon from '@mui/icons-material/Edit';
import { Link } from "react-router-dom";
import axios from "axios";
import { useEffect, useState } from "react";

import { styled } from '@mui/material/styles';

const StyledTableCell = styled(TableCell)(({ theme }) => ({
    [`&.${tableCellClasses.head}`]: {
        backgroundColor: theme.palette.common.black,
        color: theme.palette.common.white,
    },
    [`&.${tableCellClasses.body}`]: {
        fontSize: 14,
    },
}));

const StyledTableRow = styled(TableRow)(({ theme }) => ({
    '&:nth-of-type(odd)': {
        backgroundColor: theme.palette.action.hover,
    },
}));

//executa novamente a requisição ao express
//Faz a média
//Filtra os resultados de acordo com a média e renderiza esses resultados
const ListarAcima = () => {

    const [alunoes, setALunos] = useState([])

    useEffect(        
        ()=>{
          axios.get("http://localhost:3001/aluno/list")
          .then(
              (response)=>{
                  //console.log(response.data)
                  setALunos(response.data)
              }
          )
          .catch(error=>console.log(error))
        },
        []
    )

    /*const alunoes = [
        { id: 0, nome: "Vito Corleone", curso: "Sistemas de Informação", titulacao: "DOUT" },
        { id: 1, nome: "Michael Corleone", curso: "Sistemas de Informação", titulacao: "DOUT" },
        { id: 2, nome: "Kay Adams", curso: "Sistemas de Informação", titulacao: "DOUT" },
        { id: 3, nome: "Peter Clemenza", curso: "Sistemas de Informação", titulacao: "GRAD" },
        { id: 4, nome: "Salvatore Tessio", curso: "Sistemas de Informação", titulacao: "MEST" },
        { id: 5, nome: "Luca Brasi", curso: "Sistemas de Informação", titulacao: "GRAD" }
    ]*/

    function deletealuno(id) {
        if (window.confirm("Deseja Excluir?")){
            alert(`aluno ${id} excluído!`)
        }
    }

    
    let media =0

    alunoes.forEach(aluno => {
        media+=Number(aluno.ira)
    });

    media /= alunoes.length
   const resultado = alunoes.filter((alunoAcima) =>{
    return alunoAcima.ira >= media
   })

   console.log(alunoes)
   console.log(resultado)

    
    return (
        <>
            {/* <h1>Listar {id} {nome}</h1> */}
            <Typography variant="h5" fontWeight="bold">
                Listar acima
            </Typography>
            

            <TableContainer component={Paper} sx={{ marginTop: 2 }}>
                <Table sx={{ minWidth: 650 }} aria-label="simple table">
                    <TableHead>
                        <TableRow >
                            <StyledTableCell>ID</StyledTableCell>
                            <StyledTableCell>Nome</StyledTableCell>
                            <StyledTableCell>CURSO</StyledTableCell>
                            <StyledTableCell>IRA</StyledTableCell>
                            <StyledTableCell>AÇÕES</StyledTableCell>
                        </TableRow>
                    </TableHead>
                    <TableBody>
                        {resultado.map((aluno) => (
                            <StyledTableRow key={aluno.id} sx={{backgroundColor:"red"}}>
                                <StyledTableCell>{aluno._id}</StyledTableCell>
                                <StyledTableCell align="left">{aluno.nome}</StyledTableCell>
                                <StyledTableCell align="left">{aluno.curso}</StyledTableCell>
                                <StyledTableCell align="left">{aluno.ira}</StyledTableCell>
                                <StyledTableCell align="left">

                                    <Stack direction="row" spacing={1}>
                                        <IconButton aria-label="delete" color="primary" onClick={()=>deletealuno(aluno._id)}>
                                            <DeleteIcon />
                                        </IconButton>
                                        
                                        <IconButton color="primary" aria-label="edit" component={Link} to={"../editaraluno/"+aluno._id}>
                                            <EditIcon />
                                        </IconButton>
                                    </Stack>
                                </StyledTableCell>
                            </StyledTableRow>
                        ))}
                        <StyledTableRow>Media: {media}</StyledTableRow>
                        {/* {alunoes.map(
                            (aluno) => (
                                <TableRow
                                    key={aluno.id}
                                >
                                    <TableCell align="left">{aluno.id}</TableCell>
                                    <TableCell align="left">{aluno.nome}</TableCell>
                                    <TableCell align="left">{aluno.curso}</TableCell>
                                    <TableCell align="left">{aluno.titulacao}</TableCell>
                                    <TableCell align="left">XX XX</TableCell>
                                </TableRow>
                            )
                        )} */}
                    </TableBody>
                </Table>
            </TableContainer>


        </>
    )
}

export default ListarAcima