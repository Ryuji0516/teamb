package executer;

import java.util.ArrayList;
import dba.Accessor;
import bean.*;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DeleteExecuter extends Executer{
	
	public Object execute(Object o){
		
		Boolean result = false;
		
		DeleteBean db = (DeleteBean)o;
		Integer post_number = db.getPost_number();
		String postedDKey = db.getDelete_key();
		
		System.out.println(postedDKey);//test
		//postedDKey�ɂ̓t�H�[���œ��͂��ꂽ�폜�p�X�̕���������
		String DBDKey = "";
		//DBDKey�ɂ̓f�[�^�x�[�X�ɕۑ�����Ă���폜�p�X�i�w�肳�ꂽ�R�����g�ԍ��̂��́j������
		//DB�ɐڑ�
		accessor.connect();
		//�R�����g���擾----------------------------------------------------------------------
		String sql = "SELECT delete_key FROM Contents WHERE post_number = ";
		sql = sql.concat(post_number.toString());
		System.out.println("�폜�p�X�m�F���[�h�F"+sql);//test
		try{
			ResultSet rs = accessor.read(sql);
			rs.next();
			
			DBDKey = rs.getString(1);
			System.out.println("�폜�p�X = "+rs.getString(1));//test
		//--------------------------------------------------------------------------------------------------
		
		}catch(SQLException e){
			System.out.println("�������FSQLException");
			System.out.println(e.getErrorCode());
		}
		
		if(postedDKey.equals(DBDKey) || postedDKey.equals("admin")){
			//postedDKey��DBDKey�̓��e�����v�����Ȃ�폜�t���O�𗧂Ă�i�\�����Ȃ�������ReadExecuter�ōs����j
			System.out.println("���v�A�폜�������s");//test
			sql = "UPDATE Contents SET delete_flag = 1 WHERE post_number = ";
			sql = sql.concat(post_number.toString());
			System.out.println("�폜�����F"+sql);//test
			accessor.write(sql);
			
			result = true;
		}else{
			//�������Ȃ�
		}
		//DB����ؒf
		accessor.close();
		
		return result;
	}
	
}