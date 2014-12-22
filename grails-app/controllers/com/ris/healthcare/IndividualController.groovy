package com.ris.healthcare

import com.ris.healthcare.individual.Individual

import static org.springframework.http.HttpStatus.NOT_FOUND

class IndividualController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [individualInstanceList : Individual.list(params),
         individualInstanceCount: Individual.count()]
    }

    def show(Individual individualInstance) {
        [individualInstance: individualInstance]
    }

    def create() {
        new Individual(params)
    }

    def save(Individual individualInstance) {
        if (individualInstance == null) {
            notFound()
            return
        }

        if (individualInstance.hasErrors()) {
            respond individualInstance.errors, view: 'create'
            return
        }

        individualInstance.save(flush: true)
    }

    def edit(Individual individualInstance) {
        [individualInstance: individualInstance]
    }

    def update(Individual individualInstance) {
        if (individualInstance == null) {
            notFound()
            return
        }

        if (individualInstance.hasErrors()) {
            respond individualInstance.errors, view: 'edit'
            return
        }

        individualInstance.save(flush: true)
    }


    def delete(Individual individualInstance) {

        if (individualInstance == null) {
            notFound()
            return
        }

        individualInstance.delete(flush: true)
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'individual.label', default: 'Individual'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
