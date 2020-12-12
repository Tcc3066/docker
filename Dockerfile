#FROM okwrtdsh/anaconda3:9.0-cudnn7

# tensorflow install
#RUN conda install -y --quiet \
#	'tensorflow-gpu=1.7.0'
	
# FROM pytorch/pytorch:1.6.0-cuda10.1-cudnn7-devel

# RUN pip install pyro-ppl matplotlib

# WORKDIR /

FROM okwrtdsh/anaconda3:9.2-cudnn7

# pytorch install
RUN conda install -y --quiet \
	numpy pyyaml mkl mkl-include setuptools cmake cffi typing \
 && conda install -y --quiet -c mingfeima \
	mkldnn \
 && conda install -y --quiet -c pytorch \
	torchvision \
	magma-cuda91 \
	cuda91 \
	'pytorch=1.0.0' \
 && pip install matplotlib
 
 WORKDIR /


