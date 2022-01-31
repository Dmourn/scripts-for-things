import secrets, hashlib, base64, os

def opentoken(file='authtoken'): 
	token=open(file,'rb').read()
	S=token.decode().split('.')
	header = S[0]
	data = S[1]
	signature = S[2][:-1]
	
	print('\n'.join(S))
	return header, data, signature
	
	
if __name__=='__main__':
	H,D,S = opentoken()
	H=H.encode()
	D=D.encode()
	S=S.encode()
