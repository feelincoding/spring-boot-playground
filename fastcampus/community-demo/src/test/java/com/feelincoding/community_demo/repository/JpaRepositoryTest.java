package com.feelincoding.community_demo.repository;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.context.annotation.Import;
import org.springframework.test.context.ActiveProfiles;

import com.feelincoding.community_demo.config.JpaConfig;
import com.feelincoding.community_demo.domain.Article;

import static org.assertj.core.api.Assertions.*;

import java.util.List;

// @ActiveProfiles("testdb")
@DisplayName("JPA Repository 테스트")
@Import(JpaConfig.class)
@DataJpaTest
class JpaRepositoryTest {
    private final ArticleRepository articleRepository;
    private final ArticleCommentRepository articleCommentRepository;

    public JpaRepositoryTest(
            @Autowired ArticleRepository articleRepository,
            @Autowired ArticleCommentRepository articleCommentRepository) {
        this.articleRepository = articleRepository;
        this.articleCommentRepository = articleCommentRepository;
    }

    @DisplayName("select 테스트")
    @Test
    void givenTestData_whenSelecting_thenWorksFine(){
        // given
        // when
        List<Article> articles = articleRepository.findAll();
        // then
        assertThat(articles).isNotNull().hasSize(10);
    }

    @DisplayName("insert 테스트")
    @Test
    void givenTestData_whenInsertting_thenWorksFine(){
        // given
        long preCount = articleRepository.count();
        // when
        Article savedArticle = articleRepository.save(Article.of("new title", "new content", "#spring"));
        // then
        assertThat(articleRepository.count()).isEqualTo(preCount + 1);
    }

    @DisplayName("update 테스트")
    @Test
    void givenTestData_whenUpdating_thenWorksFine(){
        // given
        Article article = articleRepository.findById(1L).orElseThrow();
        String updatedHashTag = "#springboot";
        article.setHashtag(updatedHashTag);
        // when
        Article updatedArticle = articleRepository.saveAndFlush(article);
        // then
        // assertThat(updatedArticle.getHashtag()).isEqualTo(updatedHashTag);
        assertThat(updatedArticle).hasFieldOrPropertyWithValue("hashtag", updatedHashTag);
    }

    @DisplayName("delete 테스트")
    @Test
    void givenTestData_whenDeleting_thenWorksFine(){
        // given
        Article article = articleRepository.findById(1L).orElseThrow();
        long preArticleCount = articleRepository.count();
        long preArticleCommentCount = articleCommentRepository.count();
        int deletedArticleCommentCount = article.getArticleComments().size();
        // when
        articleRepository.delete(article);
        // then
        assertThat(articleRepository.count()).isEqualTo(preArticleCount - 1);
        assertThat(articleCommentRepository.count()).isEqualTo(preArticleCommentCount - deletedArticleCommentCount);
    }
}
