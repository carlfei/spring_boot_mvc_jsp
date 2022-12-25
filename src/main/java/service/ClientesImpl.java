package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ClientesDao;
import model.Cliente;

@Service
public class ClientesImpl implements Clientes {
	@Autowired
	ClientesDao clientesDao;
	@Override
	public Cliente validarCliente(String user, String password) {
		return clientesDao.findByCredentials(user, password);
	}
	@Override
	public boolean registrarCliente(Cliente cliente) {

		if(clientesDao.findByCredentials(cliente.getUsuario(), cliente.getPassword())==null) {
			return clientesDao.saveCliente(cliente);
		}else {
			return false;
		}
		
	}	
}
