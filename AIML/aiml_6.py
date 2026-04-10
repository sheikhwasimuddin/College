#sheikh wasimuddin CSEIOT 63 6 prac
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import confusion_matrix,classification_report
from sklearn.model_selection import train_test_split
from sklearn.datasets import load_iris
# Load data
data = load_iris()
X, y = data.data, data.target
# Split
X_train, X_test, y_train, y_test =train_test_split(X,y,test_size=0.2)
# Model
dt = DecisionTreeClassifier(max_depth=3)
dt.fit(X_train, y_train)
# Prediction
y_pred = dt.predict(X_test)
print(confusion_matrix(y_test, y_pred))
print(classification_report(y_test, y_pred))
