all:
	cd ann; dnc .
	cd pal; dnc . -sp "../repository;../ann"
	cd pal;dana -sp ../ann InteractiveAssembly.o ../ann/MultilayerPerceptron.o

clean:
	cd ann;rm -rf ./*.o;rm -rf ./function/*.o;rm -rf ./layer/*.o


