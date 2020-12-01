package com.bodyshop.main.service;

import java.util.Random;

import org.springframework.stereotype.Service;

@Service
public class RandomService {

	public String randompw() {

		Random rand = new Random(System.nanoTime());
		StringBuffer sb = new StringBuffer();
		
		// 총 20문자 길이의 난수를 생성
		for(int i=0; i<10; i++) {
			// 랜덤으로 true 또는 false 생성
			if(rand.nextBoolean()) {
				sb.append(rand.nextInt(10)); //0~9까지 난수 생성
			} else {
				sb.append((char)(rand.nextInt(26)+97)); //알파벳 난수 생성
			}
		}
		
		System.out.println("생성된 난수: "+sb);
		
		return sb.toString();
		
	}

}
