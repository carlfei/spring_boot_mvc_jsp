package service;

import model.Cliente;

public interface Clientes {
	Cliente validarCliente(String user, String password);
	boolean registrarCliente(Cliente cliente);
}
