class Clue < Command
    def call
        text = "Así que vienes a pedir una pistilla? Esta bien, Aquí está: \n"

        if @params.first.to_i < 2 || @params.first.to_i > 7
            return "No tengo una pista para ese dato, perdón"
        end
        
        case @params.first
        when "2"
            text = text + "2: Heart and soul interpretada con tu esposo, sonaba magico, En donde lo interpretaste?"
        when "3"
            text = text + "3: Si te comes todo su contenido, la glucosa por las nubes vas a tener"
        when "4"
            text = text + "4: En la casa donde vives solo 2 de estas salas hay, En uno de ellos debes buscar, pues ahí es donde estará escondido"
        when "5"
            text = text + "5: Un deporte que vas a practicar, Debes buscar en la que es propiedad de tu esposo, Ah y ruedas tiene, pero shhhh"
        when "6"
            text = text + "6: En este lugar llega muchas veces correo comercial, Recuerda que al edificio no debes dejar entrar a las personas que lo reparten| Consejos de vida,"
        when "7"
            text = text + "7: Cuando tu esposo y tú lo usan, se ven super sexys, No hay nada mas sexi que estar montados en ella"
        else
            text = "No me has dicho qué pistilla quieres, dime un número"
        end
        
        return text
    end
end