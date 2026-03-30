module Helper exposing (..)


type GradeStatus
    = Approved
    | Failed
    | Pending


auxiliar : Float -> GradeStatus
auxiliar num =
    if num < 0 then
        Pending

    else if num < 7 then
        Failed

    else
        Approved


categoricalGrade : List Float -> List GradeStatus
categoricalGrade lista =
    List.map auxiliar lista


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction status =
    case status of
        Cancelled ->
            "Pedir reembolso"

        Delayed ->
            "Esperar"

        OnTime ->
            "Esperar"

        Boarding ->
            "Buscar boleto"


airportAction : List AirplaneStatus -> List String
airportAction lista =
    List.map airplaneScheduleAction lista
