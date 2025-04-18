      implicit double precision(a-h, o-z)

      open(0, file='Legendre_0.txt')
      open(1, file='Legendre_1.txt')
      open(2, file='Legendre_2.txt')
      open(3, file='Legendre_3.txt')
      open(4, file='Legendre_4.txt')
      open(5, file='Legendre_5.txt')
      
      do 21 m=0,5

      x=-1
      dx=0.01
      do 19 j=1,200
	      Po=1
	      Pi=x
	      if (m.eq.0) then
	         Pi=Po
              endif
              
	      do 39 n=2,m
		      Pii=((2*n-1)*x*Pi-(n-1)*Po)/(n)
		      Po=Pi
		      Pi=Pii
 39   continue
 
	      write(m,*)x, Pi
	      x=x+dx
 19   continue
 21   continue
      stop
      end