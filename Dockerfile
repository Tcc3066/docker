#FROM okwrtdsh/anaconda3:9.0-cudnn7

# tensorflow install
#RUN conda install -y --quiet \
#	'tensorflow-gpu=1.7.0'
	
FROM pytorch/pytorch:1.6.0-cuda10.1-cudnn7-devel

RUN pip install pyro-ppl matplotlib

WORKDIR /

