VAR firstGoblin = false
VAR firstHi = false

-> main

=== main ===
- Nodo de interacción. No hay que mostrarlo.# type: INTERACTION
    * Hablar con Goblin
        ~ firstGoblin = true
        {firstHi: -> badGoblin | -> niceGoblin}
        ~ firstHi = true
    * Hablar con Fire
        ~ firstGoblin = false
        {firstHi: -> badFire | -> niceFire}
        
-> DONE

=== niceGoblin ===
~ firstHi = true
- Ke onda perro?# speaker: Globlin
    * Todo tranka
-> main

=== badGoblin ===
~ firstHi = true
- Tocá los tarros guacho... # speaker: Globlin
    * Por favor, no me robes
-> DONE

=== niceFire ===
~ firstHi = true
- Hola! qué tal? # speaker: Fire
    * Bien, gracias por preguntar
-> main

=== badFire ===
~ firstHi = true
- Ah..veo que no soy tu primer opción # speaker: Fire
     * Andá a cagar
-> DONE

-> END
