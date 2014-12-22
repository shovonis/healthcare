package com.ris.healthcare

import com.ris.healthcare.user.User

import static org.springframework.http.HttpStatus.NOT_FOUND

class UserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        User.list(params)
        [userInstanceList: User.list(params), userInstanceCount: User.count()]
    }

    def show(User userInstance) {
        [userInstance: userInstance]
    }

    def create() {
        new User(params)
    }

    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view: 'create'
            return
        }

        userInstance.save(flush: true)
    }

    def edit(User userInstance) {
        respond userInstance
    }

    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view: 'edit'
            return
        }

        userInstance.save(flush: true)
    }

    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }
        userInstance.delete(flush: true)
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
