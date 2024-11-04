import { FormHandlerModule } from "./formHandler";
import { SearchModule } from "./search";

function init() {
  FormHandlerModule.init();
  SearchModule.init();
}

init();