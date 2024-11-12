# Importar bibliotecas necesarias
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error, r2_score

# Cargar el archivo CSV
datos = pd.read_csv('VENTA_TRANSACCION.csv')

# Definir características (X) y variable objetivo (y)
x = datos[['ID_restaurante']]  # Se puede expandir con más variables como fecha, día de la semana, etc.
y = datos['venta']

# Dividir en conjunto de entrenamiento y prueba
x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=0.2, random_state=42)

# Inicializar y entrenar el modelo de regresión lineal
modelo = LinearRegression()
modelo.fit(x_train, y_train)

# Predecir en el conjunto de prueba
y_pred = modelo.predict(x_test)

# Evaluación del modelo
mse = mean_squared_error(y_test, y_pred)
r2 = r2_score(y_test, y_pred)

print(f"Error cuadrático medio (MSE): {mse}")
print(f"Coeficiente de determinación (R^2): {r2}")