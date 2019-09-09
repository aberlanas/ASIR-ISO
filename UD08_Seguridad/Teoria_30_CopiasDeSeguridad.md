---
title: UD08 - Seguridad
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Seguridad]
---

# Copias de seguridad

Uno de las tareas de los Administradores de Sistemas es la Seguridad de los Datos. Hacer copias de seguridad de los datos sólo es una parte de un plan de protección contra los desastres, y si el proceso no se diseña y somete a prueba concienzudamente, es posible que no proporcione el nivel de capacidades de recuperación de desastres y de protección de datos deseado.

Las copias de seguridad, así como su almacenamiento y gestión son una de las tareas más importantes y de mayor responsabilidad que tienen que llevar a cabo los administradores de sistemas. Si tenemos una buena política de copias de seguridad y podemos restaurar los datos de los usuarios frente a un desastre, nuestra labor será muy agradecida.

En cualquier sistema informático, la selección de _datos_ y cada _cuanto tiempo_ debe hacerse una copia son decisiones que debemos saber resolver y aplicar adecuándonos a las necesidades del Sistema.

Tan importante es crear las copias de seguridad como restaurarlas y _comprobar_ que todo funciona correctamente tras la restauración.

## Tipos de copias de seguridad

Existen varios tipos de copias de seguridad, la combinación adecuada de los diferentes tipos puede ahorranos multitud de espacio y aligerar la carga de procesamiento de los ordenadores cuando estamos realizando la copia.

### Completas

Se trata de la copia que solemos hacer, contiene todos los datos que están en una o más carpetas y la creación de copias sucesivas ocupa tanto espacio como veces hayamos copiado esas carpetas.

### Incrementales

Una operación de backup incremental sólo copia los datos que han variado desde la última operación de backup de cualquier tipo. Se suele utilizar la hora y fecha de modificación estampada en los archivos, comparándola con la hora y fecha del último backup. Las aplicaciones de backup identifican y registran la fecha y hora de realización de las operaciones de backup para identificar los archivos modificados desde esas operaciones.

Como un backup incremental sólo copia los datos a partir del último backup de cualquier tipo, se puede ejecutar tantas veces como se desee, pues sólo guarda los cambios más recientes. La ventaja de un backup incremental es que copia una menor cantidad de datos que un backup completo. Por ello, esas operaciones se realizan más deprisa y exigen menos espacio para almacenar el backup.

### Diferenciales

Una operación de backup diferencial es similar a un backup incremental la primera vez que se lleva a cabo, pues copiará todos los datos que hayan cambiado desde el backup anterior. Sin embargo, cada vez que se vuelva a ejecutar, seguirá copiando todos los datos que hayan cambiado desde el anterior completo. Por lo tanto, en las operaciones subsiguientes almacenará más datos que un backup incremental, aunque normalmente muchos menos que un backup completo. Además, la ejecución de los backups diferenciales requiere más espacio y tiempo que la de los backups incrementales, pero menos que la de los backup completos.

## Compresión

Se pueden aplicar técnicas de compresión a los datos que hemos guardado, teniendo en cuenta que aunque la compresión nos permite ocupar menos espacio, el coste temporal y computacional ha de ser tenido en cuenta, con lo que tal vez solo algunas de las copias de seguridad deben ser comprimidas.

La compresión de datos ha de ser necesariamente una compresión _sin pérdidas_ en la que debemos poder reconstruir los ficheros comprimidos de manera exacta a los originales.

Existen multitud de tipos de compresión, veremos algunas de las más utilizadas:

### tar

Mecanismo de empaquetado (_no compresión_), se trata de un mecanismo mediante el cual podemos almacenar una estructura de ficheros y carpetas en un _único_ fichero.

Es habitual acompañarlo de compresión, por ejemplo:

* tar.gz -> `tar` + `zip`
* tar.bz2 -> `tar` + `bzip2`
* tar.xz -> `tar` + `xz` (de _Tukaani_)

### zip

Compresión básica, soportada por la inmensa mayoría de los sistemas operativos.

![Zip](CopiasSeguridad/logos_zip.png)
\ 

### rar

Uno de los más famosos, y que permite comprimir aplicando contraseñas.

### gzip

Implementación libre de zip.

### 7z

Utilizando un algoritmo denominado `LZMA` comprime mejor que el Zip estándar.

![7zip](CopiasSeguridad/logos_7z.png)
\ 

### bzip2

El porcentaje de compresión alcanzado depende del contenido del fichero a comprimir, pero por lo general es mucho mejor al de los compresores basados en el algoritmo de Zip.

![Bzip2](CopiasSeguridad/logos_bzip2.png)
\ 

## Almacenamiento

Una vez creadas las copias, debemos asegurarnos de que se almacenen en un lugar seguro y protegido de desastres. De nada servirá que hagamos unas copias de seguridad exhaustivas si las dejamos en el mismo servidor que las genera y si ocurre algo no podremos recuperar nada.

El almacenamiento de las copias de seguridad a través de la Red (NFS, Samba) o directamente en Espacio de Almacenamiento en la Nube son configuraciones que debemos tener en cuenta y poner en marcha.

En las últimas versiones de Windows Server, nos permite sincronizar nuestras copias de seguridad con AWS.

## Planificación

A partir de los tres tipos de backup principales, se puede definir una estrategia propia para la protección de datos. Normalmente se utiliza uno de los enfoques siguientes:

* Completo diario
* Completo semanal + Diferencial diario
* Completo semanal + Incremental diario
