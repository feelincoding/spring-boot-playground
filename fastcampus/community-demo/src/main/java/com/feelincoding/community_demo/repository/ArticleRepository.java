package com.feelincoding.community_demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.feelincoding.community_demo.domain.Article;

public interface ArticleRepository extends JpaRepository<Article, Long> {

    
}
