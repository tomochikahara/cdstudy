import grails.util.Environment
import gts.Issue

class BootStrap {

    def init = { servletContext ->
        ["テスト作成", "レビュー", "TODOリスト作成", "Grailsアプリをherokuで実行"].eachWithIndex {it, i ->
            new Issue(title:it, author: "kyon", detail: "$it detail", point: 3, rank: i+1).save(failOnError:true, flush:true)
        }
    }
    def destroy = {
    }
}
