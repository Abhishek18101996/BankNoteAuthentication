FROM continuumio/anaconda3:4.4.0
COPY . /usr/app
EXPOSE 5000
WORKDIR /usr/app
RUN pip install -r requirements.txt
ENV port 8080
CMD python streamlit run streamlit_app.py 
