package co.cts.dao;

import com.cts.vo.Warehouse;

// Interface for methods implemented in Warehouse DAO class
public interface WarehouseDAO {
	public int warehouseValidation(Warehouse w); 
	public int warehouseInsertion(Warehouse w);
}
