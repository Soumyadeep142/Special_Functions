      implicit double precision(a-h, o-z)
      parameter(m=4)
      open(2, file='Legendre')

      x=-1
      dx=0.01
      do 1 j=1,200
	      Po=0
	      Pi=1
	      do 39 n=1,m
		      Pii=((2*n+1)*x*Pi-n*Po)/(n+1)
		      Po=Pi
		      Pi=Pii
 39   continue
	      write(2,*)x, Pi
	      x=x+dx
 1    continue
      stop
      end
