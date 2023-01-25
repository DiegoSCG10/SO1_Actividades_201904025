# Tipos de kernel y sus diferencias
El kernel es el núcleo de un sistema operativo, por lo tanto, la interfaz entre software y hardware. En pocas palabras, el kernel es el corazón del sistema operativo. El kernel es específicamente en la rama de la informática, es un software especial que forma parte importante del sistema operativo de cualquier ordenador. Existen diferentes tipos de Kernel, entre los cuales podemos encontrar:

- Kernel monolíticos: Es aquel que facilita la abstracción del hardware sin importar su grado de potencia o variedad. Son nucleos bastantes complejos en cuanto a su manejo, son muy potentes al momento de realizar su trabajo, pero puede que no sean categorizados como los mejores. 
- Microkernel: Mejor conocidos como micronúcleos, estos tienen una categoria superior a los monolíticos, debido a que cumple una serie de pequeñas abstracciones mucho más simples que las observadas en los monolíticos y su función principal es utilizar diversas aplicaciones para facilitar su funcionalidad. Su verdadero objetivo principal, es el implementar estos servicios de forma separada en cuanto a la política del funcionamiento del sistema. 
- Núcleos híbridos: Este tipo de kernel, es aquel que considera una gran modificación del microkernel, este se diferencia del microkernel, debido a que cuenta con un espacio adicional, que cumple con la función de permitir que el mismo se ejecute de forma mucho más rápida y funcional. 
- Exonúcleos: Son aquellos que si bien no cuentan con ningún tipo de abstracción, son aquellos que permiten el uso de bibliotecas. Son núcleos que funcionan de maravilla al momento de ofrecer mucha funcionalidad, gracias a que los mismos cuentan con un acceso directo al hardware del sistema. Esto quiere decir, que gracias a esta gran característica, el desarrollador podrá ser capaz de permitir todas esas decisiones importantes en cuanto al rendimiento del sistema se refiere.

# User vs Kernel Mode 

Existen amplias diferencias entre ejecutar en modo User yu ejecutar el Kernel mode, comenzando por el modo usuario, al iniciar una aplicación en modo usuario, se crea un proceso para la aplicación. Dicho proceso proporciona a la aplicación un espacio de direcciones virtuales privados y una tabla de identificadores virtuales privados de igual manera. Dado que el espacio de direcciones virtuales de una aplicación es privado, una aplicación no puede modificar los datos que pertenecen a otra aplicación. 

A su vez, en modo kernel, todo el código que se ejecuta, comparte un único espacio de direcciones virtuales. Por lo tanto, un controlador en modo kernel no está aislado de otros controladores y del propio sistema operativo. 


|Criterios | Modo Kernel | Modo Usuario|
|----------|-------------|-------------|
|Modo Kernel vs Modo Usuario |El programa tiene acceso sin restricciones| El programa de aplicación de ejecuta y se inicia|
|Interrupciones | Todo el sistema operativo puede dejar de funcionar si se produce una interrupción | Un solo proceso falla si ocurre una interrupción| 
|Espacio de direcciones virtuales| Todos los procesos comparten un unico espacio de direcciones virtuales | todos los procesos obtienen un espacio de direcciones virtuales por separado| 
|Nivel de privilegio | Las aplicaciones tienen más privilegio que en el modo usuario| Las aplicaciones tienen menos privilegios| 
|Restricciones| Puede acceder tanto a los programas del usuario comoa los programados por el kernel| necesita acceder a los programas del kernel ya que no puede acceder a ellos directamente| 


