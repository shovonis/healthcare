package com.ris.healthcare


import static org.springframework.http.HttpStatus.*

class IndividualController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Individual.list(params), model: [individualInstanceCount: Individual.count()]
    }

    def show(Individual individualInstance) {
        respond individualInstance
    }

    def create() {
        respond new Individual(params)
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

        individualInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'individual.label', default: 'Individual'), individualInstance.id])
                redirect individualInstance
            }
            '*' { respond individualInstance, [status: CREATED] }
        }
    }

    def edit(Individual individualInstance) {
        respond individualInstance
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

        individualInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Individual.label', default: 'Individual'), individualInstance.id])
                redirect individualInstance
            }
            '*' { respond individualInstance, [status: OK] }
        }
    }


    def delete(Individual individualInstance) {

        if (individualInstance == null) {
            notFound()
            return
        }

        individualInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Individual.label', default: 'Individual'), individualInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
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
