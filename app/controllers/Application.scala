package controllers

import play.api.mvc._

object Application extends Controller {
  def index = Action {
    Ok(views.html.index("anbu Core Stubulator"))
  }
}
