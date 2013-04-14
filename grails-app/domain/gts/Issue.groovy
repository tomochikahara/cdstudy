package gts

class Issue {

    String title
    String detail
    String author
    int point
    int rank

    static constraints = {
       title blank: false
       detail blank: false
       author blank: false
       point blank: true
       rank blank: true
    }
}
