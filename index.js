import { Elm } from "./src/Main.elm"
import "./index.css"

const app = Elm.Main.init({
  node: document.getElementById("app"),
  flags: null
})
