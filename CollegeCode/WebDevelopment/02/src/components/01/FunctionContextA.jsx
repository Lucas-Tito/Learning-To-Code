import { useContext } from "react"
import FunctionContextB from "./FunctionContextB"
import FunctionContextC from "./FunctionContextC"
import ColorTheme from "./MyColorContext"

const FunctionContextA = () => {
    const {bkgA} = useContext(ColorTheme)

    return (
        <>
            <div>
                <h1 style={{ backgroundColor: bkgA }}>
                    Contexto A
                </h1>
            </div>
            <FunctionContextB />
            <FunctionContextC />
        </>
    )
}

export default FunctionContextA
