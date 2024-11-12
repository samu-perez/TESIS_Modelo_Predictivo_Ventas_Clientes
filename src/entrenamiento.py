# Importar bibliotecas necesarias
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error, r2_score

# Cargar el archivo CSV
datos = pd.read_csv('VENTA_TRANSACCION.csv')

# Ver las primeras filas para confirmar que los datos se han cargado correctamente
print("Primeras filas:")
print(datos.head())

# Usar todos los datos para entrenamiento del modelo (sin dividir en entrenamiento y prueba)
x = datos[['ID_restaurante']]
y = datos['venta']

# Inicializar y entrenar el modelo de regresión lineal
modelo = LinearRegression()
modelo.fit(x, y)

# Predicciones para el mismo conjunto de datos
predicciones = modelo.predict(x)
# print("Predicciones para los datos de entrada:", predicciones)

# Proyección de ventas para un restaurante específico (ejemplo de predicción futura)
# Ejemplo: predecir la venta para un restaurante con ID_restaurante = 1
nuevos_datos = pd.DataFrame({'ID_restaurante': [1]})
proyeccion = modelo.predict(nuevos_datos)
print("Proyección de próxima venta para el restaurante con ID_restaurante = 1:", round(proyeccion[0], 2))