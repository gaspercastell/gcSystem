package mx.gcsystem
import grails.converters.*
import org.springframework.dao.DataIntegrityViolationException

class UserController {

    def index() { }

    def getUser(){
      def user=[user :"roger"]
      render user as JSON
    }
}
