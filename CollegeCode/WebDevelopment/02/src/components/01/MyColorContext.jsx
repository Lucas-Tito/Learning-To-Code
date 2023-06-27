import { createContext, useContext } from "react"
const ColorTheme = createContext(
    {bkgA:"green", bkgB:"white", 
    bkgC:"yellow", bkgD:"blue"})

export default ColorTheme