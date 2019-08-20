<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Customer_representative_model extends App_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    
    // tblmy_customer_representative, `id`, `representative`
    public function get($id = '')
    {
        if (is_numeric($id)) {
        $this->db->where('id', $id);

        return $this->db->get('tblmy_customer_representative')->row();
        }
        
        $this->db->order_by('id', 'desc');
        return $this->db->get('tblmy_customer_representative')->result_array();
    }


    public function add($data)
    {
      
        if (isset($data['custom_fields'])) {
            $custom_fields = $data['custom_fields'];
            unset($data['custom_fields']);
        }

        $this->db->insert('tblmy_customer_representative', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
            log_activity('New Customer Representative State [ID: ' . $insert_id . ']');

            if (isset($custom_fields)) {
                handle_custom_fields_post($insert_id, $custom_fields);
            }

            return $insert_id;
        }

        return false;
    }

    public function update($data, $id)
    {

        $affectedRows = 0;
        if (isset($data['custom_fields'])) {
            $custom_fields = $data['custom_fields'];
            if (handle_custom_fields_post($id, $custom_fields)) {
                $affectedRows++;
            }
            unset($data['custom_fields']);
        }
        
        
        $this->db->where('id', $id);
        $this->db->update('tblmy_customer_representative', $data);
        if ($this->db->affected_rows() > 0) {

            $affectedRows++;
            log_activity('Customer Representative Updated [ID: ' . $id . ']');

            return true;
        }

        if ($affectedRows > 0) {
            return true;
        }

        return false;
    }


    
    public function delete($id, $simpleDelete = false)
    {

        $this->db->where('relid', $id);

        //table name in custom field table is cust_repres
        $this->db->where('fieldto', 'cust_repres');
        $this->db->delete(db_prefix() . 'customfieldsvalues');

        $this->db->where('id', $id);
        $this->db->delete('tblmy_customer_representative');
        if ($this->db->affected_rows() > 0) {
            log_activity('Customer Representative Deleted [' . $id . ']');

            return true;
        }

        return false;
    }

}
