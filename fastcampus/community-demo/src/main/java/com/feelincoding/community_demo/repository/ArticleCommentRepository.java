package com.feelincoding.community_demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.feelincoding.community_demo.domain.ArticleComment;

public interface ArticleCommentRepository extends JpaRepository<ArticleComment, Long> {  
}
