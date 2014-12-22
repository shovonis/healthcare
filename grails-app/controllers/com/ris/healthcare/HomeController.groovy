package com.ris.healthcare

class HomeController {

    def index() {

    }

    def logout() {
        session?.invalidate()
        redirect(uri: "/login")
    }
}
