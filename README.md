# Emergent Multilayer Perceptron
A self adaptive artificial neural network implemented with the component-oriented language, DANA.

Artificial Neural Networks  (ANN) are computing systems inspired by the biological structure of the human brain that together with different machine learning algorithms can process complex data inputs with remarkable results. The neural network is not an algorithm, but a framework which is based on a collection of connected units called artificial neurons, each collection is defined as a layer with a specific number of neurons. The learning process is usually based on the standard backpropagation algorithm which updates the each neurons’ weight with a stochastic gradient descendent. The gist of this proposal is to be able to change the artificial neural network architecture in running time by building it around the component-oriented paradigm of DANA language. For the most implementations of neural networks, any change of configuration of its architecture requires a new training of the ANN model. Therefore, the necessary of retraining every time a configuration changes impacts the overall search for a good configuration with reasonable results. Consequently, the main objective is answer two questions: What will

happen with the ANN training time and its convergence ? and What would the impact in the overall accuracy ?

The task that the emergent multilayer perceptron will tackle is the classify iris dataset with 2 features (petal length and petal width) and output one of the three flower classes ('Setosa', 'Versicolor', 'Virginica').


Compile Project

dnc .

Compile and Run pal

dnc . -sp "../repository;../Project"

dana -sp ../Project InteractiveAssembly.o ../Project/NeuralNet.o

Add Proxy

add_proxy |../pal/monitoring/proxies/NeuralNetProxy.o|*(*:OutputLayer[0]:*)|

set_config 1

get_all_configs
