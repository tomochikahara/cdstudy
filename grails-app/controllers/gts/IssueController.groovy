package gts

import org.springframework.dao.DataIntegrityViolationException

class IssueController {

    static allowedMethods = [create: ['GET', 'POST'], edit: ['GET', 'POST'], delete: 'POST']
	static scaffold = true
   	static navigation = ["list", "create"]
    def index() {
        redirect action: 'list', params: params
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [issueInstanceList: Issue.list(params), issueInstanceTotal: Issue.count()]
    }

}
