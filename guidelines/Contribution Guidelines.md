# Guías de contribución



## Para contribuyentes

Si vas a realizar un PR para alguno de los proyectos, se sugiere:

- Estar consciente de las guías de estilo para el proyecto en el que se está trabajando.
- Estar consciente de los patrones de diseño y arquitectónicos de cada proyecto (si es que los hubiera) y aplicarlos.
- Especificar **en el título del PR** el tablero y id de la tarea en Jira. Ejemplo: `[MOBILE-123] Descripcion breve` 
- Antes de commitear, revisar bien tus cambios. Puedes utilizar:
     - `git add -p` para verificar uno por uno los cambios que añadirás al commit.
     - `CMD + K` en tu IDE (si usas IntelliJ) para realizar una operación similar, pero visualmente.
- Si se realizan cambios visuales, adjuntar capturas de pantalla / gifs de cómo se ve el resultado final.
- Si se tomaron decisiones de diseño (de software) o validaciones importantes, especificar porqué se tomó dicha decisión y bajo qué contexto. Esto no se realiza porque el código esté mal escrito, sino porque se quiere dar un mejor contexto a la persona que revisa el cambio.
- Escribir código 100% correcto siempre es imposible. Si te solicitan correcciones, no te lo tomes a mal! La retroalimentación que recibimos en los PRs son excelentes para aprender y mejorar.

## Para revisores

Si por el otro lado, eres el encargado de revisar los cambios del PR, se sugiere:

- Asegurarse de que los cambios realizados cumplan con la guía de estilo de cada proyecto. Es totalmente válido rechazar un PR si es que no se sigue la guía de estilos.
- Solicitar que se agregue una descripción para el PR, si es que lo considera necesario.
- Si ves código que no entiendes, es válido preguntar al creador del PR el porqué de los cambios que realizó. Si lo consideras necesario, solicítale añadir comentarios o refactorizar su código.
- Si ves código que funciona, pero tienes una sugerencia para hacerlo mejor, hazla! Y de ser posible, añade un snippet del código que estás sugiriendo. 
- Si ves código muy bueno, felicita a la persona que lo escribió :D
- **No seas ofensivo**. Esto no es una sugerencia. Los PRs no se hacen para criticar el código del otro ni para hacerlo sentir menos capaz, sino para poder tener otras perspectivas, prevenir errores y mejorar el código en equipo. Por eso, trata de comunicarte de forma asertiva.

#### Para los proyectos Android / iOS

Si estás revisando un proyecto Android / iOS, se sugiere:
- Verificar que no se dejen `logs` / `comentarios` innecesarios.
- Revisar que no se estén solicitando permisos nuevos, a menos que sea absolutamente necesario.
- Revisar que se respete los patrones de arquitectura.
     - Si se utiliza MVP, verificar que los `Presenter` no tengan dependencias a ninguna clase que tenga que ver con la UI
     - No mezclar la lógica de las capas de UI / Presentación / Negocio.
- SOLO se modifican los `keys` y `secrets` cuando sea absolutamente necesario.
- Verificar que los servicios web utilizados apunten a los endpoints correctos. (Si ves una url que apunta a una IP local, muy probablemente es un error!)
- Pensar en aquellos escenarios que _podrían_ generar crashes en la aplicación.
- Que el `version code / name` (en Android) o el `version code / build code` (iOS) sólo se cambie cuando se generan nuevos releases.
- Que solo se agreguen dependencias cuando es absolutamente necesario.
- Que se especifique versión de cada dependencia utilizada. (Android)
- Verificar que los cambios realizados sean compatibles con versiones previas del sistema operativo (para que funcionen en las versiones mínimas soportadas)
     
#### Para los proyectos PHP

Si estás revisando un proyecto PHP, se sugiere:
- Verificar que no se dejen `logs` / `comentarios` / `die()`'s innecesarios.
- Si se agregan variables de entorno, describir su funcionamiento en el PR
- Configurar tu ambiente correctamente si deseas probar localmente los cambios realizados.
