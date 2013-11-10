package controllers

import play.api.mvc._
import play.api.libs.json.Json

object Status extends Controller {

  def show = Action { implicit request =>
    val status: Map[String, String] = Map("status" -> "Error", "message" -> "Missing parameter [name]")
    render {
      case Accepts.Json() => Ok(Json.toJson(status))
      case _ => Ok(views.html.status.show(status))
    }
  }

}
