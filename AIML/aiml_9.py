#sheikhwasimuddin cseiot63 practical 9
from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import accuracy_score

data = load_iris()
X, y = data.data, data.target
X_train, X_test, y_train, y_test = train_test_split(X, y,test_size=0.2, random_state=42)

rf = RandomForestClassifier(n_estimators=100, oob_score=True,random_state=42)
rf.fit(X_train, y_train)
y_pred_rf = rf.predict(X_test)
print("OOB Score:", rf.oob_score_)
print("OOB Error:", 1 - rf.oob_score_)

dt = DecisionTreeClassifier(random_state=42)
dt.fit(X_train, y_train)
y_pred_dt = dt.predict(X_test)

print("Decision Tree Accuracy:", accuracy_score(y_test,y_pred_dt))

print ("Random Forest Accuracy:", accuracy_score(y_test,y_pred_rf))
