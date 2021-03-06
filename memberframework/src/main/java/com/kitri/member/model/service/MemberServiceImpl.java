package com.kitri.member.model.service;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitri.member.model.MemberDetailDto;
import com.kitri.member.model.MemberDto;
import com.kitri.member.model.ZipcodeDto;
import com.kitri.member.model.dao.MemberDao;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao memberDao;
	
	@Override
	public String idCheck(String id) {
		int cnt = memberDao.idCheck(id);
//		System.out.println("cnt : " + cnt);
		JSONObject json = new JSONObject();
		json.put("idcount", cnt);
		return json.toString();		//{"idcount" : 0 }
	}

	@Override
	public String zipSearch(String doro) {
		List<ZipcodeDto> list = memberDao.zipSearch(doro);
		JSONObject json = new JSONObject();
		JSONArray jarray = new JSONArray(list);
//		for(ZipcodeDto zipcodeDto : list) {
//			JSONObject zipcode = new JSONObject();
//			zipcode.put("", zipcodeDto.getZipcode());
//			zipcode.put("", zipcodeDto.getSido()+ " " +
//							zipcodeDto.getGugun() + " " + 
//							zipcodeDto.getUpmyon() + " " + 
//							zipcodeDto.getDoro() + " " + 
//							zipcodeDto.getBuildingNumber() + " " + 
//							zipcodeDto.getSigugunBuildingName());
//			jarray.put(zipcode);
//		}
		json.put("ziplist", jarray);
		return json.toString();
	}
//	{"ziplist":[{"":"서울특별시 구로구   디지털로34길 43 코오롱싸이언스밸리1차"},{"":"서울특별시 구로구   디지털로34길 55 코오롱싸이언스밸리2차"}
//				{"":"서울특별시 구로구   디지털로34길 43 코오롱싸이언스밸리1차"},{"":"서울특별시 구로구   디지털로34길 55 코오롱싸이언스밸리2차"}
//				{"":"서울특별시 구로구   디지털로34길 43 코오롱싸이언스밸리1차"},{"":"서울특별시 구로구   디지털로34길 55 코오롱싸이언스밸리2차"}
//				{"":"서울특별시 구로구   디지털로34길 43 코오롱싸이언스밸리1차"},{"":"서울특별시 구로구   디지털로34길 55 코오롱싸이언스밸리2차"}
//				]
//	}
	
	@Override
	public int registerMember(MemberDetailDto memberDetailDto) {
		return memberDao.registerMember(memberDetailDto);
	}

	@Override
	public MemberDto loginMember(Map<String, String> map) {
//		public MemberDto loginMember(String id , String pass) {
//		Map<String, String> map = new HashMap<String, String>();
//		map.put("userid", id);
//		map.put("userpwd", pass);
//		
		return memberDao.loginMember(map);
	}

	@Override
	public MemberDetailDto getMember(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int modifyMember(MemberDetailDto memberDetailDto) {
		return 0;
	}

	@Override
	public int deleteMember(String id) {
		return memberDao.deleteMember(id);
	}

}
